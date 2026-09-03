.class Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;
.super Ljava/lang/Thread;
.source "AndroidVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioEncoderStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$1;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;-><init>(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 210
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$900(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Encoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$300(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$900(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/mediaeditor/codec/Encoder;->start()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$1000(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Decoder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$300(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$1000(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/mediaeditor/codec/Decoder;->start()V

    .line 216
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$1100(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/local/AudioLocalSource;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$300(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$1100(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/local/AudioLocalSource;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/mediaeditor/local/AudioLocalSource;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 224
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$1200(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)V

    .line 225
    new-instance v1, Lcn/nubia/redmagickyi/crop/util/VideoToast;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$1300(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;-><init>(Landroid/content/Context;)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->missing_file:I

    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(I)V

    .line 226
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 220
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$1200(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)V

    .line 221
    new-instance v1, Lcn/nubia/redmagickyi/crop/util/VideoToast;

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$AudioEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$1300(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;-><init>(Landroid/content/Context;)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->missing_file:I

    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/crop/util/VideoToast;->showToast(I)V

    .line 222
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
