.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5$1;
.super Ljava/lang/Object;
.source "AccountController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 0

    .line 234
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$5;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->access$400(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$Callback;->onAccountInitComplete(Z)V

    return-void
.end method
