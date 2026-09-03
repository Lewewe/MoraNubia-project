.class Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$1;
.super Ljava/lang/Object;
.source "LiveCalenderChildAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$1;->this$0:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$1;->this$0:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->access$000(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;)Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$OnItemClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$1;->this$0:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->access$000(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;)Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$OnItemClickedListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$OnItemClickedListener;->onItemClicked()V

    :cond_0
    return-void
.end method
