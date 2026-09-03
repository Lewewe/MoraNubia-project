.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager$1;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;
.source "WallPaperControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;->init(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

.field final synthetic val$accountController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager;

    iput-object p4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager$1;->val$accountController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/controller/BaseInspiredController;-><init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;)V

    return-void
.end method


# virtual methods
.method public isLogin(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/WallPaperControllerManager$1;->val$accountController:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->isLogin(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    return-void
.end method
