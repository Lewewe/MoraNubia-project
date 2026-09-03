.class Lcn/nubia/mediaeditor/codec/Decoder$DecoderTask;
.super Ljava/lang/Thread;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/mediaeditor/codec/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecoderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/mediaeditor/codec/Decoder;


# direct methods
.method private constructor <init>(Lcn/nubia/mediaeditor/codec/Decoder;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/Decoder$DecoderTask;->this$0:Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/mediaeditor/codec/Decoder;Lcn/nubia/mediaeditor/codec/Decoder$1;)V
    .locals 0

    .line 538
    invoke-direct {p0, p1}, Lcn/nubia/mediaeditor/codec/Decoder$DecoderTask;-><init>(Lcn/nubia/mediaeditor/codec/Decoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 540
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/Decoder$DecoderTask;->this$0:Lcn/nubia/mediaeditor/codec/Decoder;

    invoke-static {p0}, Lcn/nubia/mediaeditor/codec/Decoder;->access$000(Lcn/nubia/mediaeditor/codec/Decoder;)V

    return-void
.end method
