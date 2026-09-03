.class Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$3;
.super Ljava/lang/Object;
.source "VerifyCodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->setGetVerifyCodeBtnDisable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$3;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 246
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$3;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
