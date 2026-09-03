.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$2;
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

    .line 178
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->achievement_acct_changed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 182
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$2;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;)V

    return-void
.end method
