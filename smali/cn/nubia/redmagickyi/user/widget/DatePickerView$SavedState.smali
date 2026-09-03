.class Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/user/widget/DatePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final sDay:I

.field final sMonth:I

.field final sYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 425
    new-instance v0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState$1;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState$1;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 409
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->sYear:I

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->sMonth:I

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->sDay:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0

    .line 402
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 403
    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->sYear:I

    .line 404
    iput p3, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->sMonth:I

    .line 405
    iput p4, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->sDay:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 417
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 418
    iget p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->sYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget p2, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->sMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/DatePickerView$SavedState;->sDay:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
