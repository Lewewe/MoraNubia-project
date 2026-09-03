.class Lcn/nubia/redmagickyi/guide/DatePickerView$4;
.super Ljava/lang/Object;
.source "DatePickerView.java"

# interfaces
.implements Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/guide/DatePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/DatePickerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$4;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/DatePickerView$4;->this$0:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->access$1300(Lcn/nubia/redmagickyi/guide/DatePickerView;)V

    return-void
.end method

.method public onScrollingStarted(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V
    .locals 0

    return-void
.end method
