.class public Lcn/nubia/redmagickyi/network/manager/LoginManager;
.super Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callback:Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;

.field private loginController:Lcn/nubia/redmagickyi/network/controller/BaseLoginController;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    new-array v0, v0, [Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;-><init>([Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;)V

    .line 17
    const-string v0, "LoginManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager;->TAG:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager;->callback:Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/network/manager/LoginManager;)Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager;->callback:Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 73
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->cancel()V

    .line 74
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager;->loginController:Lcn/nubia/redmagickyi/network/controller/BaseLoginController;

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/controller/BaseLoginController;->cancel()V

    :cond_0
    return-void
.end method

.method public load()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/manager/BaseLoadManager;->load()V

    .line 28
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;-><init>(Lcn/nubia/redmagickyi/network/manager/LoginManager;)V

    .line 68
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/LoginManager$1;->load()Lcn/nubia/redmagickyi/network/controller/BaseLoginController;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/network/manager/LoginManager;->loginController:Lcn/nubia/redmagickyi/network/controller/BaseLoginController;

    return-void
.end method
