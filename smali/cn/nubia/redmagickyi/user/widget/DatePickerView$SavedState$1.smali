.class Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState$1;
.super Ljava/lang/Object;
.source "DatePickerView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;
    .locals 0

    .line 427
    new-instance p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 425
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;
    .locals 0

    .line 431
    new-array p0, p1, [Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 425
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState$1;->newArray(I)[Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;

    move-result-object p0

    return-object p0
.end method
