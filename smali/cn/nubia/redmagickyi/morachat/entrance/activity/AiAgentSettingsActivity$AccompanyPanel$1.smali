.class Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel$1;
.super Ljava/lang/Object;
.source "AiAgentSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;

.field final synthetic val$tvAccompanyDuration:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;Landroid/widget/TextView;)V
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

    .line 373
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel$1;->val$tvAccompanyDuration:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 376
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel$1;->val$tvAccompanyDuration:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 377
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel$1;->val$tvAccompanyDuration:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 378
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;

    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->access$1800(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 379
    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel$1;->this$1:Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;->access$1800(Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel;)Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    sub-int/2addr v3, v2

    .line 380
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel$1;->val$tvAccompanyDuration:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 383
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 385
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/activity/AiAgentSettingsActivity$AccompanyPanel$1;->val$tvAccompanyDuration:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
