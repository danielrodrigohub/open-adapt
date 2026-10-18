.class public final La7/c;
.super Lb7/x;
.source "AesCtrHmacStreamingParams.java"

# interfaces
.implements Lb7/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La7/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb7/x<",
        "La7/c;",
        "La7/c$a;",
        ">;",
        "Lb7/r0;"
    }
.end annotation


# static fields
.field public static final CIPHERTEXT_SEGMENT_SIZE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:La7/c;

.field public static final DERIVED_KEY_SIZE_FIELD_NUMBER:I = 0x2

.field public static final HKDF_HASH_TYPE_FIELD_NUMBER:I = 0x3

.field public static final HMAC_PARAMS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lb7/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb7/y0<",
            "La7/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ciphertextSegmentSize_:I

.field private derivedKeySize_:I

.field private hkdfHashType_:I

.field private hmacParams_:La7/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La7/c;

    invoke-direct {v0}, La7/c;-><init>()V

    .line 2
    sput-object v0, La7/c;->DEFAULT_INSTANCE:La7/c;

    .line 3
    const-class v1, La7/c;

    invoke-static {v1, v0}, Lb7/x;->w(Ljava/lang/Class;Lb7/x;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb7/x;-><init>()V

    return-void
.end method

.method public static synthetic x()La7/c;
    .locals 1

    sget-object v0, La7/c;->DEFAULT_INSTANCE:La7/c;

    return-object v0
.end method

.method public static z()La7/c;
    .locals 1

    sget-object v0, La7/c;->DEFAULT_INSTANCE:La7/c;

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget v0, p0, La7/c;->derivedKeySize_:I

    return v0
.end method

.method public final B()La7/h;
    .locals 1

    .line 1
    iget v0, p0, La7/c;->hkdfHashType_:I

    invoke-static {v0}, La7/h;->b(I)La7/h;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, La7/h;->n:La7/h;

    :cond_0
    return-object v0
.end method

.method public final C()La7/i;
    .locals 1

    iget-object v0, p0, La7/c;->hmacParams_:La7/i;

    if-nez v0, :cond_0

    invoke-static {}, La7/i;->y()La7/i;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final o(Lb7/x$f;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, La7/c;->PARSER:Lb7/y0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, La7/c;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, La7/c;->PARSER:Lb7/y0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lb7/x$b;

    sget-object v1, La7/c;->DEFAULT_INSTANCE:La7/c;

    invoke-direct {p1, v1}, Lb7/x$b;-><init>(Lb7/x;)V

    .line 7
    sput-object p1, La7/c;->PARSER:Lb7/y0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    .line 9
    :pswitch_1
    sget-object p1, La7/c;->DEFAULT_INSTANCE:La7/c;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, La7/c$a;

    invoke-direct {p1}, La7/c$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, La7/c;

    invoke-direct {p1}, La7/c;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ciphertextSegmentSize_"

    aput-object v2, p1, v1

    const-string v1, "derivedKeySize_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "hkdfHashType_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "hmacParams_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000c\u0004\t"

    .line 12
    sget-object v1, La7/c;->DEFAULT_INSTANCE:La7/c;

    .line 13
    new-instance v2, Lb7/c1;

    invoke-direct {v2, v1, v0, p1}, Lb7/c1;-><init>(Lb7/q0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 14
    :pswitch_6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y()I
    .locals 1

    iget v0, p0, La7/c;->ciphertextSegmentSize_:I

    return v0
.end method
