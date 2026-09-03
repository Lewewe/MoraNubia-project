.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;
.super Landroid/os/Handler;
.source "WallPaperUnityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$1;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->updateWallpaperBackground()V

    return-void
.end method

.method private updateWallpaperBackground()V
    .locals 1

    .line 329
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->updateWallpaperBackgroundIndeed()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private updateWallpaperBackgroundIndeed()V
    .locals 5

    const-string v0, "jo to String:"

    .line 337
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$1300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 341
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 342
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    iget-boolean v2, v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->bitmapTostring:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "WallPaperUnityActivity"

    if-eqz v2, :cond_3

    :try_start_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    iget-boolean v2, v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->modleinitfinish:Z

    if-eqz v2, :cond_3

    .line 343
    const-string v2, "bm != null"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v2, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;-><init>()V

    const/16 v4, 0x3f7

    .line 345
    invoke-virtual {v2, v4}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setMsgID(I)V

    if-eqz v1, :cond_2

    .line 346
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$700(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v2, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageSendWallpaperBackground;->setImage(Ljava/lang/String;)V

    .line 347
    invoke-static {v2}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 348
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 350
    :cond_3
    const-string p0, "bm == null"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 353
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 314
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 315
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;->access$1300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 321
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/WallPaperUnityActivity$MainHandler;->updateWallpaperBackgroundIndeed()V

    :goto_0
    return-void
.end method
