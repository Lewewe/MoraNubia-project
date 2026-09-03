.class Lcn/nubia/redmagickyi/guide/wheelview/WheelView$2;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/guide/wheelview/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 212
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 217
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$2;->this$0:Lcn/nubia/redmagickyi/guide/wheelview/WheelView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->invalidateWheel(Z)V

    return-void
.end method
