.class Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$1;
.super Ljava/lang/Object;
.source "AlarmListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;

.field final synthetic val$holder:Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;I)V
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

    .line 73
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$1;->val$holder:Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;

    iput p3, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 80
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$1;->val$holder:Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;

    iget-object p1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->listBg:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->access$000(Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->alarm_list_select_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$1;->val$holder:Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;

    iget-object p1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->listBg:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->access$000(Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->alarm_list_unselect_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->access$100(Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$AlarmSwitchClickInterface;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 85
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->access$100(Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$AlarmSwitchClickInterface;

    move-result-object p1

    iget p0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$1;->val$position:I

    invoke-interface {p1, p2, p0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$AlarmSwitchClickInterface;->onSwitchCheck(ZI)V

    :cond_2
    return-void
.end method
