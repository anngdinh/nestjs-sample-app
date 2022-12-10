
import { Injectable } from '@nestjs/common';
import { PrismaService } from './prisma.service';
import { Prisma } from '@prisma/client';

@Injectable()
export class UserService {
  constructor(private prisma: PrismaService) { }


  // C

  async Get_Total_Money_Of_Hoc_Vien(ma_hoc_vien: Number): Promise<Number> {
    const result = await this.prisma.$queryRaw`select dbo.Get_Total_Money_Of_Hoc_Vien(${ma_hoc_vien}) as "result"`
    console.log({ result })
    return result[0].result
  }

  async Total_Bien_Lai_Greater_Than_20000(threshold: Number): Promise<Number> {
    const result = await this.prisma.$queryRaw`select dbo.Total_Bien_Lai_Greater_Than_20000(${threshold}) as "result"`
    console.log({ result })
    return result[0].result
  }
  // async user(
  //   userWhereUniqueInput: Prisma.UserWhereUniqueInput,
  // ): Promise<User | null> {
  //   return this.prisma.user.findUnique({
  //     where: userWhereUniqueInput,
  //   });
  // }

  // async users(params: {
  //   skip?: number;
  //   take?: number;
  //   cursor?: Prisma.UserWhereUniqueInput;
  //   where?: Prisma.UserWhereInput;
  //   orderBy?: Prisma.UserOrderByWithRelationInput;
  // }): Promise<User[]> {
  //   const { skip, take, cursor, where, orderBy } = params;
  //   return this.prisma.user.findMany({
  //     skip,
  //     take,
  //     cursor,
  //     where,
  //     orderBy,
  //   });
  // }

  // async createUser(data: Prisma.UserCreateInput): Promise<User> {
  //   return this.prisma.user.create({
  //     data,
  //   });
  // }

  // async updateUser(params: {
  //   where: Prisma.UserWhereUniqueInput;
  //   data: Prisma.UserUpdateInput;
  // }): Promise<User> {
  //   const { where, data } = params;
  //   return this.prisma.user.update({
  //     data,
  //     where,
  //   });
  // }

  // async deleteUser(where: Prisma.UserWhereUniqueInput): Promise<User> {
  //   return this.prisma.user.delete({
  //     where,
  //   });
  // }
}
