.class Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$6;
.super Ljava/lang/Object;
.source "EmailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->onSuccess(Lcn/nubia/redmagickyi/network/model/EmailResponse;)V
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

    .line 802
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$6;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 805
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$6;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$6;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$1400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$6;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->access$3400(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;->access$700(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$UIManager;)V

    .line 808
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager$6;->this$1:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$DataLoadManager;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->initAdapter()V

    return-void
.end method
