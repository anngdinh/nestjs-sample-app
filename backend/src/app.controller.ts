import {
  Controller,
  Get,
  Param,
  Post,
  Body,
  Put,
  Delete,
} from '@nestjs/common';
import { UserService } from './user.service';
import { CRUDService } from './crud.service';
import { Bien_Lai_Thu_Tien as Bien_Lai_Thu_TienModel } from '@prisma/client';
// import { User as UserModel, Post as PostModel } from '@prisma/client';

@Controller()
export class AppController {
  constructor(
    private readonly userService: UserService,
    private readonly crudService: CRUDService,
  ) { }


  @Get('call')
  async getPostById() {
    return this.crudService.call();
  }

  @Get('crud/reads')
  async crudRead(): Promise<Bien_Lai_Thu_TienModel[]> {
    return this.crudService.reads()
  }

  @Post('crud/create')
  async crudCreate(
    @Body() postData: {
      so_tien_goc: string;
      so_tien_can_thanh_toan: string;
      so_tien_da_thanh_toan: string;
      so_tien_con_lai: string;
      hinh_thuc: string;
      ma_lop_hoc: string;
      ma_hoc_vien: string
    },
  ): Promise<Bien_Lai_Thu_TienModel> {
    const { so_tien_goc,
      so_tien_can_thanh_toan,
      so_tien_da_thanh_toan,
      so_tien_con_lai,
      hinh_thuc,
      ma_lop_hoc,
      ma_hoc_vien } = postData;
    return this.crudService.create({
      so_tien_goc: Number(so_tien_goc),
      so_tien_can_thanh_toan: Number(so_tien_can_thanh_toan),
      so_tien_da_thanh_toan: Number(so_tien_da_thanh_toan),
      so_tien_con_lai: Number(so_tien_con_lai),
      hinh_thuc,
      Lop_Hoc: {
        connect: { ma_lop_hoc: Number(ma_lop_hoc) }
      },
      Hoc_Vien: {
        connect: { ma_hoc_vien: Number(ma_hoc_vien) }
      },
    });
  }


  @Put('crud/:id')
  async crudUpdate(@Param('id') id: string,
    @Body() postData: {
      so_tien_goc: string;
      so_tien_can_thanh_toan: string;
      so_tien_da_thanh_toan: string;
      so_tien_con_lai: string;
      hinh_thuc: string;
      ma_lop_hoc: string;
      ma_hoc_vien: string
    }): Promise<Bien_Lai_Thu_TienModel> {
    const { so_tien_goc,
      so_tien_can_thanh_toan,
      so_tien_da_thanh_toan,
      so_tien_con_lai,
      hinh_thuc,
      ma_lop_hoc,
      ma_hoc_vien } = postData;
    return this.crudService.update({
      where: { ma_bien_lai: Number(id) },
      data: {
        so_tien_goc: Number(so_tien_goc),
        so_tien_can_thanh_toan: Number(so_tien_can_thanh_toan),
        so_tien_da_thanh_toan: Number(so_tien_da_thanh_toan),
        so_tien_con_lai: Number(so_tien_con_lai),
        hinh_thuc,
        Lop_Hoc: {
          connect: { ma_lop_hoc: Number(ma_lop_hoc) }
        },
        Hoc_Vien: {
          connect: { ma_hoc_vien: Number(ma_hoc_vien) }
        },
      },
    });
  }

  @Delete('crud/:id')
  async crudDelete(@Param('id') id: string): Promise<Bien_Lai_Thu_TienModel> {
    return this.crudService.delete({ ma_bien_lai: Number(id) });
  }

  // B

  @Get('getB/:payment/:max/:min')
  async getB(@Param('payment') payment: string, @Param('max') max: string, @Param('min') min: string) {
    // console.log({ payment, max, min })
    return this.userService.Get_Hoc_Vien_Bien_lai(payment, max, min);
  }



  @Get('getB2/:param')
  async getB2(@Param('param') param: string) {
    return this.userService.Get_Hoc_Vien_Have_Greater_Than_N_Bien_Lai(param);
  }


  // C

  @Get('money/:id')
  async getMoney(@Param('id') ma_hoc_vien: string): Promise<Number> {
    return this.userService.Get_Total_Money_Of_Hoc_Vien(Number(ma_hoc_vien))
  }

  @Get('receipt2000/:threshold')
  async getReceipt(@Param('threshold') threshold: string): Promise<Number> {
    return this.userService.Total_Bien_Lai_Greater_Than_20000(Number(threshold))
  }

  // @Get('post/:id')
  // async getPostById(@Param('id') id: string): Promise<PostModel> {
  //   return this.postService.post({ id: Number(id) });
  // }

  // @Get('feed')
  // async getPublishedPosts(): Promise<PostModel[]> {
  //   return this.postService.posts({
  //     where: { published: true },
  //   });
  // }

  // @Get('filtered-posts/:searchString')
  // async getFilteredPosts(
  //   @Param('searchString') searchString: string,
  // ): Promise<PostModel[]> {
  //   return this.postService.posts({
  //     where: {
  //       OR: [
  //         {
  //           title: { contains: searchString },
  //         },
  //         {
  //           content: { contains: searchString },
  //         },
  //       ],
  //     },
  //   });
  // }

  // @Post('post')
  // async createDraft(
  //   @Body() postData: { title: string; content?: string; authorEmail: string },
  // ): Promise<PostModel> {
  //   const { title, content, authorEmail } = postData;
  //   return this.postService.createPost({
  //     title,
  //     content,
  //     author: {
  //       connect: { email: authorEmail },
  //     },
  //   });
  // }

  // @Post('user')
  // async signupUser(
  //   @Body() userData: { name?: string; email: string },
  // ): Promise<UserModel> {
  //   return this.userService.createUser(userData);
  // }

  // @Put('publish/:id')
  // async publishPost(@Param('id') id: string): Promise<PostModel> {
  //   return this.postService.updatePost({
  //     where: { id: Number(id) },
  //     data: { published: true },
  //   });
  // }

  // @Delete('post/:id')
  // async deletePost(@Param('id') id: string): Promise<PostModel> {
  //   return this.postService.deletePost({ id: Number(id) });
  // }
}
