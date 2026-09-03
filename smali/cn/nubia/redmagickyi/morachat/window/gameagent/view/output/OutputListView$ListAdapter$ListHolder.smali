.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OutputListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;

.field private tvContent:Landroid/widget/TextView;

.field private tvIndex:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;

    .line 175
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 176
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->iv_index:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->tvIndex:Landroid/widget/TextView;

    .line 177
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->tvTitle:Landroid/widget/TextView;

    .line 178
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_content:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->tvContent:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;)Landroid/widget/TextView;
    .locals 0

    .line 169
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->tvIndex:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;)Landroid/widget/TextView;
    .locals 0

    .line 169
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;)Landroid/widget/TextView;
    .locals 0

    .line 169
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->tvContent:Landroid/widget/TextView;

    return-object p0
.end method
