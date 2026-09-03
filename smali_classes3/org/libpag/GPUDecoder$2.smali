.class Lorg/libpag/GPUDecoder$2;
.super Ljava/lang/Object;
.source "GPUDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libpag/GPUDecoder;->releaseDecoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libpag/GPUDecoder;


# direct methods
.method constructor <init>(Lorg/libpag/GPUDecoder;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lorg/libpag/GPUDecoder$2;->this$0:Lorg/libpag/GPUDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 271
    :try_start_0
    iget-object v0, p0, Lorg/libpag/GPUDecoder$2;->this$0:Lorg/libpag/GPUDecoder;

    invoke-static {v0}, Lorg/libpag/GPUDecoder;->access$200(Lorg/libpag/GPUDecoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/libpag/GPUDecoder$2;->this$0:Lorg/libpag/GPUDecoder;

    invoke-static {v0}, Lorg/libpag/GPUDecoder;->access$200(Lorg/libpag/GPUDecoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    :goto_1
    iget-object p0, p0, Lorg/libpag/GPUDecoder$2;->this$0:Lorg/libpag/GPUDecoder;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/libpag/GPUDecoder;->access$202(Lorg/libpag/GPUDecoder;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    return-void
.end method
