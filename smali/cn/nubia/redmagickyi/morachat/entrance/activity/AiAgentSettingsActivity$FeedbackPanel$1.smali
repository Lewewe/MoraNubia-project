.class Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$1;
.super Ljava/lang/Object;
.source "AiAgentSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 490
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$1900(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    .line 494
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$2000(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 496
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$2000(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 497
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 498
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$2000(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    .line 500
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$1900(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 501
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 502
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;->access$1900(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$FeedbackPanel;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method
