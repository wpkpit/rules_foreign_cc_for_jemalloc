#include <gtest/gtest.h>
#include <jemalloc/jemalloc.h>

namespace { 

TEST(JemallocTest, Malloc)
{
  int* ptr_mal = (int*) malloc(sizeof(int));
  EXPECT_TRUE(ptr_mal != nullptr);
  int* ptr_cal = (int*) calloc(10, sizeof(int));
  EXPECT_TRUE(ptr_cal != nullptr);  
  EXPECT_TRUE(realloc(ptr_cal, 20*sizeof(int)) != nullptr);

  free(ptr_mal);
  free(ptr_cal);

  int* ptr_int = new int;
  EXPECT_TRUE(ptr_int != nullptr);
  delete ptr_int;
  int* ptr_arr_int = new int[10];
  EXPECT_TRUE(ptr_arr_int != nullptr);
	delete[] ptr_arr_int;

  std::shared_ptr<int> sh_ptr{std::make_shared<int>(0)};
  EXPECT_TRUE(sh_ptr != nullptr);

}

} // namespace

