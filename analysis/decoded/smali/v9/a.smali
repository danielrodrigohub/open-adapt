.class public final Lv9/a;
.super Ljava/lang/Object;
.source "AdaptIdentifier.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv9/a$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv9/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lv9/a$a;

.field public static final j:Lv9/a;

.field public static final k:Lv9/a;

.field public static final l:Lv9/a;

.field public static final m:Lv9/a;

.field public static final n:Lv9/a;


# instance fields
.field public final h:Ljava/util/UUID;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv9/a$a;

    invoke-direct {v0}, Lv9/a$a;-><init>()V

    sput-object v0, Lv9/a;->i:Lv9/a$a;

    new-instance v0, Lv9/a$b;

    invoke-direct {v0}, Lv9/a$b;-><init>()V

    sput-object v0, Lv9/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    new-instance v0, Lv9/a;

    const-string v1, "18254c73-7846-4437-8def-1221409cdbb8"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const-string v2, "fromString(\"18254c73-7846-4437-8def-1221409cdbb8\")"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lv9/a;-><init>(Ljava/util/UUID;)V

    sput-object v0, Lv9/a;->j:Lv9/a;

    .line 2
    new-instance v0, Lv9/a;

    const-string v1, "07c13f57-e7e3-45ee-9165-31fe4b9f4880"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const-string v2, "fromString(\"07c13f57-e7e3-45ee-9165-31fe4b9f4880\")"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lv9/a;-><init>(Ljava/util/UUID;)V

    sput-object v0, Lv9/a;->k:Lv9/a;

    .line 3
    new-instance v0, Lv9/a;

    const-string v1, "df3e70aa-32ac-40f6-a62f-f0522d00fc9c"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const-string v2, "fromString(\"df3e70aa-32ac-40f6-a62f-f0522d00fc9c\")"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lv9/a;-><init>(Ljava/util/UUID;)V

    sput-object v0, Lv9/a;->l:Lv9/a;

    .line 4
    new-instance v0, Lv9/a;

    const-string v1, "4b4a9b7f-f3e2-4a8e-b6a1-a858f62fa949"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const-string v2, "fromString(\"4b4a9b7f-f3e2-4a8e-b6a1-a858f62fa949\")"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lv9/a;-><init>(Ljava/util/UUID;)V

    sput-object v0, Lv9/a;->m:Lv9/a;

    .line 5
    new-instance v0, Lv9/a;

    const-string v1, "bc295598-7de0-4397-8e4f-eb7066bacdbd"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const-string v2, "fromString(\"bc295598-7de0-4397-8e4f-eb7066bacdbd\")"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lv9/a;-><init>(Ljava/util/UUID;)V

    sput-object v0, Lv9/a;->n:Lv9/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1

    const-string v0, "uuid"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv9/a;->h:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lv9/a;->h:Ljava/util/UUID;

    sget-object v1, Lv9/a;->m:Lv9/a;

    iget-object v1, v1, Lv9/a;->h:Ljava/util/UUID;

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lv9/a;->h:Ljava/util/UUID;

    sget-object v1, Lv9/a;->n:Lv9/a;

    iget-object v1, v1, Lv9/a;->h:Ljava/util/UUID;

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lv9/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isIgnore"

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lv9/a;->h:Ljava/util/UUID;

    sget-object v1, Lv9/a;->k:Lv9/a;

    iget-object v1, v1, Lv9/a;->h:Ljava/util/UUID;

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isNotification"

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lv9/a;->h:Ljava/util/UUID;

    sget-object v1, Lv9/a;->j:Lv9/a;

    iget-object v1, v1, Lv9/a;->h:Ljava/util/UUID;

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "isNone"

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lv9/a;->h:Ljava/util/UUID;

    sget-object v1, Lv9/a;->l:Lv9/a;

    iget-object v1, v1, Lv9/a;->h:Ljava/util/UUID;

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "isInternal"

    goto :goto_0

    :cond_3
    const-string v0, "isAppOrOther"

    :goto_0
    const-string v1, "identifierType: "

    .line 5
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lv9/a;->h:Ljava/util/UUID;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdaptIdentifier[uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Lv9/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.nike.android.adaptkit.AdaptIdentifier"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lv9/a;

    .line 3
    iget-object v1, p0, Lv9/a;->h:Ljava/util/UUID;

    iget-object v3, p1, Lv9/a;->h:Ljava/util/UUID;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 4
    :cond_3
    invoke-virtual {p0}, Lv9/a;->a()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lv9/a;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    iget-object v1, p0, Lv9/a;->h:Ljava/util/UUID;

    sget-object v3, Lv9/a;->j:Lv9/a;

    iget-object v3, v3, Lv9/a;->h:Ljava/util/UUID;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v0

    .line 6
    :cond_5
    iget-object v1, p1, Lv9/a;->h:Ljava/util/UUID;

    sget-object v3, Lv9/a;->k:Lv9/a;

    iget-object v3, v3, Lv9/a;->h:Ljava/util/UUID;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    .line 7
    :cond_6
    iget-object v1, p1, Lv9/a;->h:Ljava/util/UUID;

    sget-object v3, Lv9/a;->l:Lv9/a;

    iget-object v3, v3, Lv9/a;->h:Ljava/util/UUID;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v2

    .line 8
    :cond_7
    iget-object v1, p0, Lv9/a;->h:Ljava/util/UUID;

    iget-object p1, p1, Lv9/a;->h:Ljava/util/UUID;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lv9/a;->h:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lv9/a;->h:Ljava/util/UUID;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdaptIdentifier(uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lv9/a;->h:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
