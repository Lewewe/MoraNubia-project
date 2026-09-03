.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OutputButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonHolder"
.end annotation


# instance fields
.field private ivIcon:Landroid/widget/ImageView;

.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;

.field private tvContent:Lcn/nubia/redmagickyi/view/StrokeTextView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;Landroid/view/View;)V
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

    .line 216
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;

    .line 217
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 218
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->iv_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;->ivIcon:Landroid/widget/ImageView;

    .line 219
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_content:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/view/StrokeTextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;->tvContent:Lcn/nubia/redmagickyi/view/StrokeTextView;

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 212
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;->ivIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;)Lcn/nubia/redmagickyi/view/StrokeTextView;
    .locals 0

    .line 212
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;->tvContent:Lcn/nubia/redmagickyi/view/StrokeTextView;

    return-object p0
.end method
