.class public final Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;
.super Ljava/lang/Object;
.source "OIDCAuthCredentialJSON.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON$Companion;,
        Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON$$serializer;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON$Companion;


# instance fields
.field private final access_token:Ljava/lang/String;

.field private final expirationDateMillis:J

.field private final expires_in:I

.field private final id_token:Ljava/lang/String;

.field private final refresh_token:Ljava/lang/String;

.field private final token_type:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON$Companion;-><init>(Lrd/h;)V

    sput-object v0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->Companion:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p9, :cond_0

    .line 1
    sget-object p9, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON$$serializer;->INSTANCE:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON$$serializer;

    invoke-virtual {p9}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p9

    invoke-static {p1, v0, p9}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->access_token:Ljava/lang/String;

    iput-object p3, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->refresh_token:Ljava/lang/String;

    iput-object p4, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->token_type:Ljava/lang/String;

    iput p5, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expires_in:I

    iput-object p6, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->id_token:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 3
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long p4, p5

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    add-long/2addr p3, p1

    .line 4
    iput-wide p3, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expirationDateMillis:J

    goto :goto_0

    :cond_1
    iput-wide p7, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expirationDateMillis:J

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "access_token"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refresh_token"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token_type"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id_token"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->access_token:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->refresh_token:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->token_type:Ljava/lang/String;

    .line 9
    iput p4, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expires_in:I

    .line 10
    iput-object p5, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->id_token:Ljava/lang/String;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 12
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long p4, p4

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    add-long/2addr p3, p1

    iput-wide p3, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expirationDateMillis:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->access_token:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->refresh_token:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->token_type:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expires_in:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->id_token:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;

    move-result-object p0

    return-object p0
.end method

.method public static final write$Self(Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 10

    const-string v0, "self"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->access_token:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->refresh_token:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->token_type:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expires_in:I

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->id_token:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {p1, p2, v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expirationDateMillis:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    iget v8, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expires_in:I

    int-to-long v8, v8

    .line 5
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    add-long/2addr v7, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 6
    iget-wide v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expirationDateMillis:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->refresh_token:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->token_type:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expires_in:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->id_token:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;
    .locals 7

    const-string v0, "access_token"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refresh_token"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token_type"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id_token"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;

    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->access_token:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->access_token:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->refresh_token:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->refresh_token:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->token_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->token_type:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expires_in:I

    iget v3, p1, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expires_in:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->id_token:Ljava/lang/String;

    iget-object p1, p1, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->id_token:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAccess_token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpirationDateMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expirationDateMillis:J

    return-wide v0
.end method

.method public final getExpires_in()I
    .locals 1

    iget v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expires_in:I

    return v0
.end method

.method public final getId_token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->id_token:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefresh_token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->refresh_token:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->token_type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->access_token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->refresh_token:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->token_type:Ljava/lang/String;

    .line 3
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expires_in:I

    .line 5
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->id_token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "OIDCAuthCredentialJSON(access_token="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->access_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refresh_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->refresh_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->token_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expires_in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->expires_in:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->id_token:Ljava/lang/String;

    const/16 v2, 0x29

    .line 3
    invoke-static {v0, v1, v2}, La0/d;->d(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
