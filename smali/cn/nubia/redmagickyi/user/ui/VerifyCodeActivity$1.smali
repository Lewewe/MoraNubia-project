.class Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;
.super Landroid/os/Handler;
.source "VerifyCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;
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

    .line 71
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 73
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 75
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    const-string v2, "psw"

    const-string v3, "phone"

    const/4 v4, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->register_success:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 98
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 99
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->access$300(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-static {}, Lcn/nubia/redmagickyi/user/utils/Rsa;->getInstance()Lcn/nubia/redmagickyi/user/utils/Rsa;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->access$500(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/user/utils/Rsa;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->finish()V

    goto/16 :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->reset_pwd_success:I

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 90
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 91
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->access$300(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-static {}, Lcn/nubia/redmagickyi/user/utils/Rsa;->getInstance()Lcn/nubia/redmagickyi/user/utils/Rsa;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->access$400(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/user/utils/Rsa;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->finish()V

    goto :goto_0

    .line 77
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->access$000(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)I

    move-result p1

    if-lez p1, :cond_3

    .line 78
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->access$010(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)I

    .line 79
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->access$100(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->get_countdown:I

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->access$000(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->access$100(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 82
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->access$100(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->get_verification_code:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 83
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->access$200(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Lcn/nubia/redmagickyi/util/ZTETimer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;->access$200(Lcn/nubia/redmagickyi/user/ui/VerifyCodeActivity;)Lcn/nubia/redmagickyi/util/ZTETimer;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    :cond_4
    :goto_0
    return-void
.end method
