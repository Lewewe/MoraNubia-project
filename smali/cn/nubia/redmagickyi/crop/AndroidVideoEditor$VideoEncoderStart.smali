.class Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;
.super Ljava/lang/Thread;
.source "AndroidVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoEncoderStart"
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

    .line 154
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$1;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;-><init>(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 158
    const-string v0, "AndroidVideoAddMedia"

    const-string v1, "start editing local video"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$200(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Encoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$300(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$200(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/mediaeditor/codec/Encoder;->start()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$400(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Decoder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$300(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$400(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/mediaeditor/codec/Decoder;->start()V

    .line 166
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$400(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Decoder;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$500(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$300(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 167
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$600(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    move-result-object v0

    iget v0, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTrimMode:I

    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$400(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Decoder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v3}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$600(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    move-result-object v3

    iget-wide v3, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    mul-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcn/nubia/mediaeditor/codec/Decoder;->setNextIFramePts(J)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$400(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Decoder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v3}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$600(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    move-result-object v3

    iget-wide v3, v3, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mEndClip:J

    mul-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcn/nubia/mediaeditor/codec/Decoder;->setNextIFramePts(J)V

    .line 173
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$200(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Encoder;

    move-result-object v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$300(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 174
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$600(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    move-result-object v0

    iget v0, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTrimMode:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$500(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 178
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$600(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    move-result-object v0

    iget v0, v0, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mTrimMode:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_6

    .line 179
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$200(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Encoder;

    move-result-object v0

    iget-object v5, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v5}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$600(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    move-result-object v5

    iget-wide v5, v5, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mStartClip:J

    mul-long/2addr v5, v1

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v1}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$600(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/redmagickyi/crop/VideoEditorInfo;

    move-result-object v1

    iget-wide v1, v1, Lcn/nubia/redmagickyi/crop/VideoEditorInfo;->mFrameInterval:J

    add-long/2addr v5, v1

    invoke-virtual {v0, v5, v6}, Lcn/nubia/mediaeditor/codec/Encoder;->setVideoPts(J)V

    goto :goto_2

    .line 176
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$200(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/codec/Encoder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcn/nubia/mediaeditor/codec/Encoder;->setVideoPts(J)V

    .line 183
    :cond_6
    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$700(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/local/VideoEditorSource;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$300(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 186
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$700(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/local/VideoEditorSource;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcn/nubia/mediaeditor/local/VideoEditorSource;->setFirstPts(J)V

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$700(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/local/VideoEditorSource;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/mediaeditor/local/VideoEditorSource;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 194
    :cond_7
    :goto_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$800(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/local/VideoLocalSource;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$300(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 196
    :try_start_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {v0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$800(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/local/VideoLocalSource;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcn/nubia/mediaeditor/local/VideoLocalSource;->setFirstPts(J)V

    .line 197
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;

    invoke-static {p0}, Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;->access$800(Lcn/nubia/redmagickyi/crop/AndroidVideoEditor;)Lcn/nubia/mediaeditor/local/VideoLocalSource;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/mediaeditor/local/VideoLocalSource;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_4
    return-void
.end method
