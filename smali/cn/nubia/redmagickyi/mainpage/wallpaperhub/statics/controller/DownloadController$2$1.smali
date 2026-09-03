.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2$1;
.super Ljava/lang/Object;
.source "DownloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;IZ)V

    .line 225
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;

    iget-object v0, v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$OnDownloadCallback;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;)Ljava/io/File;

    move-result-object p0

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController$OnDownloadCallback;->onDownloadSuccess(Ljava/io/File;)V

    return-void
.end method
