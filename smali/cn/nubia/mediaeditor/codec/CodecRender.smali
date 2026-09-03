.class public Lcn/nubia/mediaeditor/codec/CodecRender;
.super Ljava/lang/Object;
.source "CodecRender.java"

# interfaces
.implements Lcn/nubia/mediaeditor/editor/common/OutputListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Render"


# instance fields
.field protected mFiller:Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEncoderBufferUpperLimit(I)Z
    .locals 0

    .line 56
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/CodecRender;->mFiller:Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;

    invoke-interface {p0, p1}, Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;->isBufferUpperLimit(I)Z

    move-result p0

    return p0
.end method

.method public isMuxerStarted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onOutputBufferUpdate(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/CodecRender;->mFiller:Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;

    if-eqz p0, :cond_0

    .line 34
    invoke-interface {p0, p1, p2}, Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;->fillInputBufferAsync(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method

.method public onOutputComplete(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOutputError()V
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/CodecRender;->mFiller:Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;

    invoke-interface {p0}, Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;->errorInput()V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public setDecoder(Lcn/nubia/mediaeditor/codec/DataOutput;)V
    .locals 0

    .line 26
    invoke-virtual {p1, p0}, Lcn/nubia/mediaeditor/codec/DataOutput;->setOutputListener(Lcn/nubia/mediaeditor/editor/common/OutputListener;)V

    return-void
.end method

.method public setFiller(Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/CodecRender;->mFiller:Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;

    return-void
.end method
