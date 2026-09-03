.class public final enum Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;
.super Ljava/lang/Enum;
.source "SpeakVia.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Client:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

.field public static final enum Server_From_Care:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

.field public static final enum Server_From_Unity:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;
    .locals 3

    .line 9
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->Client:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->Server_From_Unity:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->Server_From_Care:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    filled-new-array {v0, v1, v2}, [Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    const-string v1, "Client"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->Client:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    .line 13
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    const-string v1, "Server_From_Unity"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->Server_From_Unity:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    .line 15
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    const-string v1, "Server_From_Care"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->Server_From_Care:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    .line 9
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->$values()[Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->$VALUES:[Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    .line 27
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia$1;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia$1;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 9
    const-class v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;
    .locals 1

    .line 9
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->$VALUES:[Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

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

    .line 24
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
