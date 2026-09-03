.class Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$2;
.super Ljava/lang/Object;
.source "BaseMvpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->hideLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$2;->this$0:Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$2;->this$0:Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->access$000(Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$2;->this$0:Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->access$000(Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity$2;->this$0:Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;->access$000(Lcn/nubia/redmagickyi/user/base/BaseMvpActivity;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
