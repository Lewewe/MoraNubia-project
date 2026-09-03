.class Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$3;
.super Ljava/lang/Object;
.source "EmailFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->deleteCurrent(Landroid/view/View;Lcn/nubia/redmagickyi/network/bean/EmailBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

.field final synthetic val$syncList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;Ljava/util/List;)V
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

    .line 694
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$3;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$3;->val$syncList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public statusSyncCallback(I)V
    .locals 2

    .line 697
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$3;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 699
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$3;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1500(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->access$2600(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;)Lcn/nubia/redmagickyi/database/EmailManager;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$3;->val$syncList:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/database/EmailManager;->syncStatus(ILjava/util/List;)V

    .line 700
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$3;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$200(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 702
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$3;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$3800(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    :cond_1
    :goto_0
    return-void
.end method
