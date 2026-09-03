.class Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BirthDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;

.field private tvBirth:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;->this$0:Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;

    .line 82
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;->tvBirth:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    invoke-static {p1}, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->access$100(Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const p1, 0x800013

    .line 86
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->access$100(Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const p1, 0x800015

    .line 88
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x11

    .line 90
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;->tvBirth:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;->tvBirth:Landroid/widget/TextView;

    return-object p0
.end method
