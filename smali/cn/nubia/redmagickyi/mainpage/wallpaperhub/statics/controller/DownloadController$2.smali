.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;
.super Ljava/lang/Object;
.source "DownloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->copyToTargetFile(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

.field final synthetic val$fromFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->val$fromFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;)Z
    .locals 0

    .line 204
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->isInterrupted()Z

    move-result p0

    return p0
.end method

.method private isInterrupted()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;)Lcn/nubia/redmagickyi/util/ZTETimer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->access$600(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;)Lcn/nubia/redmagickyi/util/ZTETimer;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->isInterrupted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 211
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->val$fromFile:Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/CopyVideoFile;->getFilePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 218
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->access$500(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
