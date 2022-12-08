
import { Injectable } from '@nestjs/common';
import { PrismaService } from './prisma.service';
import { Bien_Lai_Thu_Tien, Prisma } from '@prisma/client';

@Injectable()
export class CRUDService {
  constructor(private prisma: PrismaService) {}

  async call() {
    // const [callGetSequenceBlock, getStartEnd] = await prisma.$transaction([
    //   prisma.$executeRaw`CALL GetSequenceBlock(${sequenceName}, ${addCount}, @start, @end);`,
    //   prisma.$queryRaw`SELECT @newSeqStart, @newSeqEnd FROM DUAL;`,
    // ]);
    const result = await this.prisma.$queryRaw`EXEC Foo 1`
    return result[0]
  }
  
  async reads(params: {
    skip?: number;
    take?: number;
    cursor?: Prisma.Bien_Lai_Thu_TienWhereUniqueInput;
    where?: Prisma.Bien_Lai_Thu_TienWhereInput;
    orderBy?: Prisma.Bien_Lai_Thu_TienOrderByWithRelationInput;
  }): Promise<Bien_Lai_Thu_Tien[]> {
    const { skip, take, cursor, where, orderBy } = params;
    return this.prisma.bien_Lai_Thu_Tien.findMany({
      skip,
      take,
      cursor,
      where,
      orderBy,
    });
  }

  async create(data: Prisma.Bien_Lai_Thu_TienCreateInput): Promise<Bien_Lai_Thu_Tien> {
    return this.prisma.bien_Lai_Thu_Tien.create({
      data,
    });
  }

  async update(params: {
    where: Prisma.Bien_Lai_Thu_TienWhereUniqueInput;
    data: Prisma.Bien_Lai_Thu_TienUpdateInput;
  }): Promise<Bien_Lai_Thu_Tien> {
    const { data, where } = params;
    return this.prisma.bien_Lai_Thu_Tien.update({
      data,
      where,
    });
  }

  async delete(where: Prisma.Bien_Lai_Thu_TienWhereUniqueInput): Promise<Bien_Lai_Thu_Tien> {
    return this.prisma.bien_Lai_Thu_Tien.delete({
      where,
    });
  }

  // async post(
  //   postWhereUniqueInput: Prisma.PostWhereUniqueInput,
  // ): Promise<Post | null> {
  //   return this.prisma.post.findUnique({
  //     where: postWhereUniqueInput,
  //   });
  // }

  // async posts(params: {
  //   skip?: number;
  //   take?: number;
  //   cursor?: Prisma.PostWhereUniqueInput;
  //   where?: Prisma.PostWhereInput;
  //   orderBy?: Prisma.PostOrderByWithRelationInput;
  // }): Promise<Post[]> {
  //   const { skip, take, cursor, where, orderBy } = params;
  //   return this.prisma.post.findMany({
  //     skip,
  //     take,
  //     cursor,
  //     where,
  //     orderBy,
  //   });
  // }


  // async updatePost(params: {
  //   where: Prisma.PostWhereUniqueInput;
  //   data: Prisma.PostUpdateInput;
  // }): Promise<Post> {
  //   const { data, where } = params;
  //   return this.prisma.post.update({
  //     data,
  //     where,
  //   });
  // }

  // async deletePost(where: Prisma.PostWhereUniqueInput): Promise<Post> {
  //   return this.prisma.post.delete({
  //     where,
  //   });
  // }
}
