.class public Lcom/zte/weather/sdk/model/city/City;
.super Ljava/lang/Object;
.source "City.java"


# static fields
.field public static final DEFAULT:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final LOCATION:I = 0x1

.field public static final NAME_SEPERATE:Ljava/lang/String; = ", "

.field public static final NOT_DEFAULT:I

.field public static final NOT_LOCATION:I


# instance fields
.field private cityName:Ljava/lang/String;

.field private cityNameEn:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private countryEn:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isDefault:I

.field private isLocation:I

.field private latitude:Ljava/lang/String;

.field private locationKey:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nameEn:Ljava/lang/String;

.field private order:I

.field private postCode:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private provinceEn:Ljava/lang/String;

.field private timezoneIsDayNightSaving:Ljava/lang/Boolean;

.field private timezoneName:Ljava/lang/String;

.field private utc:Ljava/lang/String;

.field private weathers:Lcom/zte/weather/sdk/model/weather/Weathers;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/zte/weather/sdk/model/city/City;->isDefault:I

    .line 38
    iput v0, p0, Lcom/zte/weather/sdk/model/city/City;->isLocation:I

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/zte/weather/sdk/model/city/City;->order:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/zte/weather/sdk/model/city/City;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/zte/weather/sdk/model/city/City;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->id:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/zte/weather/sdk/model/city/City;->name:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/zte/weather/sdk/model/city/City;->locationKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/zte/weather/sdk/model/city/City;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->name:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/zte/weather/sdk/model/city/City;->postCode:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/zte/weather/sdk/model/city/City;->longitude:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/zte/weather/sdk/model/city/City;->latitude:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->id:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/zte/weather/sdk/model/city/City;->name:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/zte/weather/sdk/model/city/City;->nameEn:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/zte/weather/sdk/model/city/City;->postCode:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/zte/weather/sdk/model/city/City;->longitude:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/zte/weather/sdk/model/city/City;->latitude:Ljava/lang/String;

    .line 69
    iput p7, p0, Lcom/zte/weather/sdk/model/city/City;->isDefault:I

    .line 70
    iput p8, p0, Lcom/zte/weather/sdk/model/city/City;->isLocation:I

    .line 71
    iput p9, p0, Lcom/zte/weather/sdk/model/city/City;->order:I

    .line 72
    iput-object p10, p0, Lcom/zte/weather/sdk/model/city/City;->locationKey:Ljava/lang/String;

    return-void
.end method

.method public static isHomeCityId(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 182
    const-string v0, "10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCityName()Ljava/lang/String;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->cityName:Ljava/lang/String;

    return-object p0
.end method

.method public getCityNameEn()Ljava/lang/String;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->cityNameEn:Ljava/lang/String;

    return-object p0
.end method

.method public getCityOrCountryName()Ljava/lang/String;
    .locals 4

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    const-string v2, "zh"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ", "

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->locationKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/weather/sdk/model/city/City;->isHomeCityId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->cityName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->province:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->province:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/weather/sdk/model/city/City;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->province:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->province:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->country:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->locationKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/weather/sdk/model/city/City;->isHomeCityId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->cityNameEn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->provinceEn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->provinceEn:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/weather/sdk/model/city/City;->cityNameEn:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->provinceEn:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->provinceEn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->provinceEn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->countryEn:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->country:Ljava/lang/String;

    return-object p0
.end method

.method public getCountryEn()Ljava/lang/String;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->countryEn:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0, v0}, Lcom/zte/weather/sdk/model/city/City;->getDisplayName(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName(ZZ)Ljava/lang/String;
    .locals 4

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 82
    const-string v1, "zh"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", "

    if-eqz v0, :cond_5

    .line 83
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->locationKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/weather/sdk/model/city/City;->isHomeCityId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->cityName:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/weather/sdk/model/city/City;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->cityName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->province:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->province:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->cityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->province:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 98
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->province:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v0, p0, Lcom/zte/weather/sdk/model/city/City;->province:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p2, :cond_4

    .line 105
    iget-object p2, p0, Lcom/zte/weather/sdk/model/city/City;->country:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->country:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 113
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    iget-object v2, p0, Lcom/zte/weather/sdk/model/city/City;->nameEn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v2, p0, Lcom/zte/weather/sdk/model/city/City;->cityNameEn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/zte/weather/sdk/model/city/City;->cityNameEn:Ljava/lang/String;

    iget-object v3, p0, Lcom/zte/weather/sdk/model/city/City;->nameEn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v2, p0, Lcom/zte/weather/sdk/model/city/City;->cityNameEn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz p1, :cond_7

    .line 120
    iget-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->provinceEn:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->provinceEn:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/weather/sdk/model/city/City;->cityNameEn:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->provinceEn:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz p2, :cond_8

    .line 125
    iget-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->locationKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/zte/weather/sdk/model/city/City;->isHomeCityId(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->countryEn:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->countryEn:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDistrictName()Ljava/lang/String;
    .locals 2

    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 136
    const-string v1, "zh"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->nameEn:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getIsDefault()I
    .locals 0

    .line 286
    iget p0, p0, Lcom/zte/weather/sdk/model/city/City;->isDefault:I

    return p0
.end method

.method public getIsLocation()I
    .locals 0

    .line 294
    iget p0, p0, Lcom/zte/weather/sdk/model/city/City;->isLocation:I

    return p0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->latitude:Ljava/lang/String;

    return-object p0
.end method

.method public getLocationKey()Ljava/lang/String;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->locationKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->longitude:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNameEn()Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->nameEn:Ljava/lang/String;

    return-object p0
.end method

.method public getOrder()I
    .locals 0

    .line 302
    iget p0, p0, Lcom/zte/weather/sdk/model/city/City;->order:I

    return p0
.end method

.method public getPostCode()Ljava/lang/String;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->postCode:Ljava/lang/String;

    return-object p0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->province:Ljava/lang/String;

    return-object p0
.end method

.method public getProvinceEn()Ljava/lang/String;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->provinceEn:Ljava/lang/String;

    return-object p0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 2

    .line 177
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 178
    const-string v1, "zh"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->nameEn:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getTimezoneIsDayNightSaving()Ljava/lang/Boolean;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->timezoneIsDayNightSaving:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getTimezoneName()Ljava/lang/String;
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->timezoneName:Ljava/lang/String;

    return-object p0
.end method

.method public getUtc()Ljava/lang/String;
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->utc:Ljava/lang/String;

    return-object p0
.end method

.method public getWeathers()Lcom/zte/weather/sdk/model/weather/Weathers;
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->weathers:Lcom/zte/weather/sdk/model/weather/Weathers;

    return-object p0
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->cityName:Ljava/lang/String;

    return-void
.end method

.method public setCityNameEn(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->cityNameEn:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->country:Ljava/lang/String;

    return-void
.end method

.method public setCountryEn(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->countryEn:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsDefault(I)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/zte/weather/sdk/model/city/City;->isDefault:I

    return-void
.end method

.method public setIsLocation(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/zte/weather/sdk/model/city/City;->isLocation:I

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLocationKey(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->locationKey:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->name:Ljava/lang/String;

    return-void
.end method

.method public setNameEn(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->nameEn:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/zte/weather/sdk/model/city/City;->order:I

    return-void
.end method

.method public setPostCode(Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->postCode:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->province:Ljava/lang/String;

    return-void
.end method

.method public setProvinceEn(Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->provinceEn:Ljava/lang/String;

    return-void
.end method

.method public setTimezoneIsDayNightSaving(Ljava/lang/Boolean;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->timezoneIsDayNightSaving:Ljava/lang/Boolean;

    return-void
.end method

.method public setTimezoneName(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->timezoneName:Ljava/lang/String;

    return-void
.end method

.method public setUtc(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->utc:Ljava/lang/String;

    return-void
.end method

.method public setWeathers(Lcom/zte/weather/sdk/model/weather/Weathers;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/zte/weather/sdk/model/city/City;->weathers:Lcom/zte/weather/sdk/model/weather/Weathers;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 186
    sget-boolean v0, Lcom/zte/mifavor/weather/sdk/logger/LibLogger;->LOGGABLE_DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "City{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/weather/sdk/model/city/City;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/city/City;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', nameEn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/city/City;->nameEn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', cityName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/city/City;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', cityNameEn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/city/City;->cityNameEn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', province=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/city/City;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', provinceEn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/city/City;->provinceEn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', country=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/city/City;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', countryEn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/city/City;->countryEn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', postCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/city/City;->postCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', isDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/weather/sdk/model/city/City;->isDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/weather/sdk/model/city/City;->isLocation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/weather/sdk/model/city/City;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locationKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/city/City;->locationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', timezoneName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/weather/sdk/model/city/City;->timezoneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', timezoneIsDayNightSaving="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/weather/sdk/model/city/City;->timezoneIsDayNightSaving:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "CITY"

    :goto_0
    return-object p0
.end method
