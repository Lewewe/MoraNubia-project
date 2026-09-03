.class Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$1;
.super Ljava/lang/Object;
.source "LiveCalenderMainAdapter.java"

# interfaces
.implements Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$OnItemClickedListener;


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

    .line 78
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$1;->this$0:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$1;->val$position:I

    iput-object p3, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$1;->val$bean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$1;->this$0:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->access$000(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;)Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$OnItemClickedListener;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$1;->val$position:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$1;->val$bean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    invoke-interface {v0, v1, p0}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$OnItemClickedListener;->onItemClicked(ILcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;)V

    return-void
.end method
