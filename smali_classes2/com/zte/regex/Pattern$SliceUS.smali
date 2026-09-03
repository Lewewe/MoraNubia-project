.class final Lcom/zte/regex/Pattern$SliceUS;
.super Lcom/zte/regex/Pattern$SliceIS;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SliceUS"
.end annotation


# direct methods
.method constructor <init>([I)V
    .locals 0

    .line 3474
    invoke-direct {p0, p1}, Lcom/zte/regex/Pattern$SliceIS;-><init>([I)V

    return-void
.end method


# virtual methods
.method toLower(I)I
    .locals 0

    .line 3477
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p0

    return p0
.end method
