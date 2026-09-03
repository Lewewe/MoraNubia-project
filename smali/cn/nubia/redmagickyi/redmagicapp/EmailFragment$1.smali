.class Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "EmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 138
    iget-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {p4}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 139
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/EmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
