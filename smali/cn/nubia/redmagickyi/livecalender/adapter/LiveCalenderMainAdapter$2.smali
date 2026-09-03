.class Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$2;
.super Ljava/lang/Object;
.source "LiveCalenderMainAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;

.field final synthetic val$bean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;ILcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$2;->this$0:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$2;->val$position:I

    iput-object p3, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$2;->val$bean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$2;->this$0:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->access$000(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;)Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$OnItemClickedListener;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$2;->val$position:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$2;->val$bean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    invoke-interface {p1, v0, p0}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$OnItemClickedListener;->onItemClicked(ILcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;)V

    return-void
.end method
