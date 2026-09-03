.class Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity$1;
.super Ljava/lang/Object;
.source "ForgetPswActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 98
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;->access$002(Lcn/nubia/redmagickyi/user/ui/ForgetPswActivity;Z)Z

    return-void
.end method
