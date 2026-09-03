.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$6;
.super Ljava/lang/Object;
.source "ChangeSkinFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initStoryView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

.field final synthetic val$layoutPrivacyData:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/view/View;)V
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

    .line 483
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$6;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$6;->val$layoutPrivacyData:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$6;->val$layoutPrivacyData:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 487
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$6;->val$layoutPrivacyData:Landroid/view/View;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x800005

    goto :goto_0

    :cond_0
    const v1, 0x800003

    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 488
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$6;->val$layoutPrivacyData:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
