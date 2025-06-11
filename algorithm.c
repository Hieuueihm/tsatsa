#include <stdint.h>
#include <stdio.h>

// mô tả thuật toán 


void compute_integral_image_dynamic(
    int height,
    int width,
    uint8_t I[height][width],
    uint16_t J[height + 1][width + 1]
) {
    for (int i = 0; i <= height; ++i) {
        J[i][0] = 0;
    }
    for (int j = 0; j <= width; ++j) {
        J[0][j] = 0;
    }

    for (int i = 1; i <= height; ++i) {
        for (int j = 1; j <= width; ++j) {
            J[i][j] = I[i - 1][j - 1]
                      + J[i - 1][j]
                      + J[i][j - 1]
                      - J[i - 1][j - 1];
        }
    }
}


int main() {
    uint8_t input[5][5] = {
        {17, 24,  1,  8, 15},
        {23,  5,  7, 14, 16},
        { 4,  6, 13, 20, 22},
        {10, 12, 19, 21,  3},
        {11, 18, 25,  2,  9}
    };

    uint16_t output[5 + 1][5 + 1];

    compute_integral_image_dynamic(5, 5, input, output);

    // In kết quả
    for (int i = 0; i <= 5; ++i) {
        for (int j = 0; j <= 5; ++j) {
            printf("%4d ", output[i][j]);
        }
        printf("\n");
    }

    return 0;
}

// // psuedo
// -- Initialize
// Done <= '0';
// wait until Start = '1';
// for i from 0 to Height loop
//     J[i][0] := 0;
// end loop;

// for j from 0 to Width loop
//     J[0][j] := 0;
// end loop;

// -- Tính toán ảnh tích phân
// for i from 1 to Height loop
//     for j from 1 to Width loop
//         A := I[i - 1][j - 1];           -- Giá trị ảnh gốc tại vị trí (i-1, j-1)
//         B := J[i - 1][j];               -- Tổng tích lũy từ hàng trên
//         C := J[i][j - 1];               -- Tổng tích lũy từ cột bên trái
//         D := J[i - 1][j - 1];           -- Tổng tích lũy từ vùng chéo trên trái (loại trừ phần trùng)
//         J[i][j] := A + B + C - D;       -- Tính giá trị tại vị trí J(i,j)
//     end loop;
// end loop;

// Done <= '1';             -- Báo hiệu hoàn tất xử lý
// wait until Start = '0';  -- Đợi tín hiệu bắt đầu mới
// goto Initialize;





// // pseudo algorithm

// STATE: IDLE
//     if start == 1 then
//         i ← 0
//         j ← 0
//         done ← 0
//         go to CHECK_ERROR
// CHECK_ERROR
//     if height < 5 or width < 5 then
//         go to DONE
//     go to INIT_ROW


// STATE: INIT_ROW
//     Write 0 vào RAM[base_output + i * (width+1) + j]
//     if j < width then
//         j ← j + 1
//     else
//         j ← 0
//         i ← 1
//         go to INIT_COL

// STATE: INIT_COL
//     Write 0 vào RAM[base_output + i * (width+1)]
//     if i < height then
//         i ← i + 1
//     else
//         i ← 1
//         j ← 1
//         go to LOAD_PIXEL

// STATE: LOAD_PIXEL
//     A ← RAM[base_input + (i-1)*width + (j-1)]
//     B ← RAM[base_output + (i-1)*(width+1) + j]
//     C ← RAM[base_output + i*(width+1) + (j-1)]
//     D ← RAM[base_output + (i-1)*(width+1) + (j-1)]
//     go to COMPUTE

// STATE: COMPUTE
//     J ← A + B + C - D
//     go to STORE

// STATE: STORE
//     Write J vào RAM[base_output + i*(width+1) + j]
//     go to NEXT_INDEX

// STATE: NEXT_INDEX
//     if j < width then
//         j ← j + 1
//         go to LOAD_PIXEL
//     else if i < height then
//         j ← 1
//         i ← i + 1
//         go to LOAD_PIXEL
//     else
//         go to DONE

// STATE: DONE
//     done ← 1
//     if start == 0 then
//         go to IDLE



// // fsmd

// S0 -> IDLE
// // s1
// STATE: IDLE
//     if start == 1 then
//         go to CHECK_ERROR
// // s2
// CHECK_ERROR:    
//     if size_err then
//         go to DONE
//     LDI_i <- 1
//     LDI_j <- 1
//     go to INIT_ROW

// // s3
// STATE: INIT_ROW
//         Int_WE <- 1
//         init_sel <- 1 // j
//         En_j <- 1
//         if(jMax) then
//             go to INIT_COL
//         else goto INIT_ROW

     

//         // s4    
// STATE: INIT_COL
//         Int_WE <- 1
//         init_sel <- 0 // i
//         En_i <- 1
//         if(iMax) then
//             go to RESET_INDEX
//         else goto INIT_COL
// // s5
// STATE: RESET_INDEX
//         LDI_i <- 1
//         LDI_j <- 1
//         go to LOAD_PIXEL


//         // S6
// STATE: LOAD_PIXEL_A
//         Int_RE <- 1
//         compute_sel <- 1
//         addr_sel <- 00
//         go to STORE_A
//         // S7
// STATE: STORE_A
//         En_A <-1 
//         goto LOAD_PIXEL_B
// // S8
// STATE: LOAD_PIXEL_B
//         Int_RE <- 1
//         compute_sel <- 1
//         addr_sel <- 01
//         go to LOAD_PIXEL_C
// // S9
// STATE: STORE_B
//         En_B <- 1
//         goto LOAD_PIXEL_C

// // S10
// STATE: LOAD_PIXEL_C
//         Int_RE <- 1
//         compute_sel <- 1
//         addr_sel <- 10
//         go to LOAD_PIXEL_D
// // S11
// STATE: STORE_C
//         En_C <- 1
//         goto LOAD_PIXEL_D
    
// // S12
// STATE: LOAD_PIXEL_D
//         Int_RE <- 1
//         compute_sel <- 1
//         addr_sel <- 11
//         go to COMPUTE
// // S13
// STATE: STORE_D
//         En_D <- 1
//         go to COMPUTE
// // S14
// STATE: COMPUTE
//         En_Compute <- 1
//         go to STORE
//     // S15
// STATE: STORE
//         Int_WE <- 1
//         addr_store_sel <- 1
//         mem_d_sel <- 1
//         go to NEXT_INDEX
// // S16
// STATE: NEXT_INDEX_J
//     En_j <- 1
//     if(jMax) then
//         goto NEXT_INDEX_I
//     else go to LOAD_PIXEL_A
//     // 17
// NEXT_INDEX_I
//     LDI_J <- 1
//     En_i <- 1
//     if(iMax) then
//         go to DONE
//     else
//         go to LOAD_PIXEL_A
// // 18 19
// STATE: DONE
//     done ← 1
//     if start == 0 then
//         go to IDLE