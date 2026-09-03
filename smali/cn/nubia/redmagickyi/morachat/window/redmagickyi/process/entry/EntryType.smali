.class public final enum Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;
.super Ljava/lang/Enum;
.source "EntryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

.field public static final enum TYPE_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

.field public static final enum TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

.field public static final enum TYPE_TIPS:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

.field public static final enum TYPE_UNITY:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;
    .locals 4

    .line 3
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    sget-object v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_TIPS:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    sget-object v3, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_UNITY:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    filled-new-array {v0, v1, v2, v3}, [Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    const-string v1, "TYPE_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    .line 7
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    const-string v1, "TYPE_ACCOMPANY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    .line 9
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    const-string v1, "TYPE_TIPS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_TIPS:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    .line 11
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    const-string v1, "TYPE_UNITY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->TYPE_UNITY:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    .line 3
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->$values()[Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->$VALUES:[Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 3
    const-class v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;
    .locals 1

    .line 3
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->$VALUES:[Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/entry/EntryType;

    return-object v0
.end method
