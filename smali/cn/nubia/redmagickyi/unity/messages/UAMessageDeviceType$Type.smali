.class public final enum Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;
.super Ljava/lang/Enum;
.source "UAMessageDeviceType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

.field public static final enum MOBILE:Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

.field public static final enum PAD:Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;
    .locals 2

    .line 4
    sget-object v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->MOBILE:Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    sget-object v1, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->PAD:Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    filled-new-array {v0, v1}, [Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    const-string v1, "MOBILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->MOBILE:Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    .line 6
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    const-string v1, "PAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->PAD:Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    .line 4
    invoke-static {}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->$values()[Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->$VALUES:[Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->value:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;)I
    .locals 0

    .line 4
    iget p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 4
    const-class v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;
    .locals 1

    .line 4
    sget-object v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->$VALUES:[Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    return-object v0
.end method
