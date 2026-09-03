.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$ControllerHandler;
.super Landroid/os/Handler;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$ControllerHandler;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 122
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 125
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x0

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 126
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController$ControllerHandler;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/MediaController;)Lcn/nubia/redmagickyi/view/LoadingView;

    move-result-object p0

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/LoadingView;->setVisibility(I)V

    :goto_2
    return-void
.end method
