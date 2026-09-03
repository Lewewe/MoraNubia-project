.class Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$2;
.super Ljava/lang/Object;
.source "EmailFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->loadContent(Landroid/view/View;Lcn/nubia/redmagickyi/network/bean/EmailBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 652
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$2;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emailFetchCallback(IILcn/nubia/redmagickyi/network/bean/EmailBean;)V
    .locals 1

    .line 655
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$2;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$3700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)Lcn/nubia/redmagickyi/network/bean/EmailBean;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$2;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$3700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)Lcn/nubia/redmagickyi/network/bean/EmailBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getId()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 656
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$2;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    if-nez p1, :cond_0

    .line 658
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$2;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$2600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)Lcn/nubia/redmagickyi/database/EmailManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcn/nubia/redmagickyi/database/EmailManager;->updateEmail(ILcn/nubia/redmagickyi/network/bean/EmailBean;)V

    .line 659
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$2;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$3600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;ILcn/nubia/redmagickyi/network/bean/EmailBean;)V

    .line 660
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$2;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 662
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$2;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$3600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;ILcn/nubia/redmagickyi/network/bean/EmailBean;)V

    :cond_1
    :goto_0
    return-void
.end method
