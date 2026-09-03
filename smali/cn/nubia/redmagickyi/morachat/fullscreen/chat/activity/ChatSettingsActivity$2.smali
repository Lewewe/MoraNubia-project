.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ChatSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;

.field final synthetic val$skins:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;Ljava/util/List;)V
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

    .line 84
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$2;->val$skins:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 87
    iget-object p4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;

    invoke-static {p4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    invoke-static {p4}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 88
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$2;->val$skins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p4, v1, :cond_0

    iget-object p4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 89
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p4

    if-nez p4, :cond_3

    iget-object p4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    goto :goto_1

    :cond_3
    move p4, v0

    :goto_1
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 92
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$2;->val$skins:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_4

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity$2;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/activity/ChatSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_4
    iput v0, p1, Landroid/graphics/Rect;->right:I

    :goto_2
    return-void
.end method
