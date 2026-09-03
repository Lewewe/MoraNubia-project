.class Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$2;
.super Ljava/lang/Object;
.source "AlarmActionAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$2;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 182
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$2;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->access$000(Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$2;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;->access$000(Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$2;->val$position:I

    invoke-interface {v0, p1, p2, p0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmActionAdapter$ActionClickInterface;->onItemCheckBox(Landroid/view/View;ZI)V

    :cond_1
    return-void
.end method
