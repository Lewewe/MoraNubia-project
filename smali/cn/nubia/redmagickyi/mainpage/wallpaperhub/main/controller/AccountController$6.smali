.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$6;
.super Ljava/lang/Object;
.source "AccountController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->isLogin(Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

.field final synthetic val$callback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;)V
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

    .line 252
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$6;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$6;->val$callback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$6;->val$callback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;->onComplete(Z)V

    return-void
.end method
