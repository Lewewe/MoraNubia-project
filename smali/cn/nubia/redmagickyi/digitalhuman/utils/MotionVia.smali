.class public final enum Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;
.super Ljava/lang/Enum;
.source "MotionVia.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Care:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

.field public static final enum Emotion:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

.field public static final enum Specify:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

.field public static final enum TouchEvent:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;
    .locals 4

    .line 6
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Emotion:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Care:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Specify:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    sget-object v3, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->TouchEvent:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    filled-new-array {v0, v1, v2, v3}, [Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    const-string v1, "Emotion"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Emotion:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    .line 10
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    const-string v1, "Care"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Care:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    .line 12
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    const-string v1, "Specify"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Specify:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    .line 14
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    const-string v1, "TouchEvent"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->TouchEvent:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    .line 6
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->$values()[Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->$VALUES:[Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    .line 26
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia$1;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia$1;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6
    const-class v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;
    .locals 1

    .line 6
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->$VALUES:[Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
