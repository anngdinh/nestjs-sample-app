import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
// import { PrismaService } from './services/prisma/prisma.service';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.enableCors();
  await app.listen(3001);

  // const prismaService = app.get(PrismaService);
  // await prismaService.enableShutdownHooks(app)
}
bootstrap();
