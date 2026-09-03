.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;
.super Ljava/lang/Object;
.source "AccountController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->updateAcctInfo(Lcn/nubia/accountsdk/fullclient/AccountFullClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 227
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkinWhenAccountChanged()Z

    .line 228
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->switchModelSkinWhenAccountChanged()Z

    .line 229
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->access$302(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;Z)Z

    .line 231
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->isLogin(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V

    :cond_0
    return-void
.end method
