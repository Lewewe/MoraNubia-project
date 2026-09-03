.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;
.super Ljava/lang/Object;
.source "AccompanyManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/Camera2BackgroundUtil$CameraCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraInited()V
    .locals 1

    .line 192
    const-string p0, "Accompany-AccompanyManager"

    const-string v0, "onCameraInited"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onErr(Ljava/lang/String;)V
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onErr: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Accompany-AccompanyManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 199
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;->onTakePhotoOk(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onRecordComplete(Ljava/lang/String;)V
    .locals 1

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onRecordComplete: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Accompany-AccompanyManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartPreview()V
    .locals 1

    .line 232
    const-string p0, "Accompany-AccompanyManager"

    const-string v0, "onStartPreview"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartRecord()V
    .locals 1

    .line 227
    const-string p0, "Accompany-AccompanyManager"

    const-string v0, "onStartRecord"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTakePhotoOk(Landroid/graphics/Bitmap;)V
    .locals 9

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTakePhotoOk: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Accompany-AccompanyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->isAccompanyEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$Callback;->isEnableAnalyze()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    const-string v0, "perform analyze"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {v0, p1, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;Landroid/graphics/Bitmap;Z)V

    .line 211
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$700(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object v3

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)Landroid/content/Context;

    move-result-object v4

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$600(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zte/oss/entry/UploadFile;

    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;)V

    invoke-direct {v6, v2, p1}, Lcom/zte/oss/entry/UploadFile;-><init>(ILcom/zte/oss/entry/UploadFile$FileGetter;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->startImage2TextSession(Landroid/content/Context;Ljava/lang/String;Lcom/zte/oss/entry/UploadFile;ZLjava/lang/Runnable;)V

    .line 218
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$800(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$WorkHandler;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)J

    move-result-wide v0

    invoke-virtual {p1, v2, v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 220
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$800(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$WorkHandler;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager;)J

    move-result-wide v0

    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v2, v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/process/AccompanyManager$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
