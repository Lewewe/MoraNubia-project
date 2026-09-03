.class Lcn/nubia/redmagickyi/playmate/RedmagicSupport$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RedmagicSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$1;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$1;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    if-lez p2, :cond_0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_6_dp:I

    goto :goto_0

    :cond_0
    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
