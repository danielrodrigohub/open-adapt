.class public final Lgc/o;
.super Lm7/w;
.source "messages.java"

# interfaces
.implements Lm7/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgc/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/w<",
        "Lgc/o;",
        "Lgc/o$a;",
        ">;",
        "Lm7/q0;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgc/o;

.field public static final HISTO_0_FIELD_NUMBER:I = 0x1

.field public static final HISTO_1_FIELD_NUMBER:I = 0x2

.field public static final HISTO_2_FIELD_NUMBER:I = 0x3

.field public static final HISTO_3_FIELD_NUMBER:I = 0x4

.field public static final HISTO_4_FIELD_NUMBER:I = 0x5

.field public static final HISTO_5_FIELD_NUMBER:I = 0x6

.field public static final HISTO_6_FIELD_NUMBER:I = 0x7

.field public static final HISTO_7_FIELD_NUMBER:I = 0x8

.field public static final HISTO_8_FIELD_NUMBER:I = 0x9

.field public static final HISTO_9_FIELD_NUMBER:I = 0xa

.field public static final MAX_CURRENT_COUNT_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lm7/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/x0<",
            "Lgc/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private histo0_:I

.field private histo1_:I

.field private histo2_:I

.field private histo3_:I

.field private histo4_:I

.field private histo5_:I

.field private histo6_:I

.field private histo7_:I

.field private histo8_:I

.field private histo9_:I

.field private maxCurrentCount_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc/o;

    invoke-direct {v0}, Lgc/o;-><init>()V

    .line 2
    sput-object v0, Lgc/o;->DEFAULT_INSTANCE:Lgc/o;

    .line 3
    const-class v1, Lgc/o;

    invoke-static {v1, v0}, Lm7/w;->w(Ljava/lang/Class;Lm7/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm7/w;-><init>()V

    return-void
.end method

.method public static bridge synthetic x()Lgc/o;
    .locals 1

    sget-object v0, Lgc/o;->DEFAULT_INSTANCE:Lgc/o;

    return-object v0
.end method

.method public static y()Lgc/o;
    .locals 1

    sget-object v0, Lgc/o;->DEFAULT_INSTANCE:Lgc/o;

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget v0, p0, Lgc/o;->histo1_:I

    return v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Lgc/o;->histo2_:I

    return v0
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lgc/o;->histo3_:I

    return v0
.end method

.method public final D()I
    .locals 1

    iget v0, p0, Lgc/o;->histo4_:I

    return v0
.end method

.method public final E()I
    .locals 1

    iget v0, p0, Lgc/o;->histo5_:I

    return v0
.end method

.method public final F()I
    .locals 1

    iget v0, p0, Lgc/o;->histo6_:I

    return v0
.end method

.method public final G()I
    .locals 1

    iget v0, p0, Lgc/o;->histo7_:I

    return v0
.end method

.method public final H()I
    .locals 1

    iget v0, p0, Lgc/o;->histo8_:I

    return v0
.end method

.method public final o(Lm7/w$f;)Ljava/lang/Object;
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
    sget-object p1, Lgc/o;->PARSER:Lm7/x0;

    if-nez p1, :cond_1

    .line 4
    const-class v0, Lgc/o;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object p1, Lgc/o;->PARSER:Lm7/x0;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lm7/w$b;

    sget-object v1, Lgc/o;->DEFAULT_INSTANCE:Lgc/o;

    invoke-direct {p1, v1}, Lm7/w$b;-><init>(Lm7/w;)V

    .line 7
    sput-object p1, Lgc/o;->PARSER:Lm7/x0;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 9
    :pswitch_1
    sget-object p1, Lgc/o;->DEFAULT_INSTANCE:Lgc/o;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lgc/o$a;

    invoke-direct {p1}, Lgc/o$a;-><init>()V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lgc/o;

    invoke-direct {p1}, Lgc/o;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "histo0_"

    aput-object v2, p1, v1

    const-string v1, "histo1_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "histo2_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "histo3_"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "histo4_"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-string v1, "histo5_"

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-string v1, "histo6_"

    aput-object v1, p1, v0

    const/4 v0, 0x7

    const-string v1, "histo7_"

    aput-object v1, p1, v0

    const/16 v0, 0x8

    const-string v1, "histo8_"

    aput-object v1, p1, v0

    const/16 v0, 0x9

    const-string v1, "histo9_"

    aput-object v1, p1, v0

    const/16 v0, 0xa

    const-string v1, "maxCurrentCount_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\u000b\u0000\u0000\u0001\u000b\u000b\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u000b\u0004\u000b\u0005\u000b\u0006\u000b\u0007\u000b\u0008\u000b\t\u000b\n\u000b\u000b\u000b"

    .line 12
    sget-object v1, Lgc/o;->DEFAULT_INSTANCE:Lgc/o;

    .line 13
    new-instance v2, Lm7/b1;

    invoke-direct {v2, v1, v0, p1}, Lm7/b1;-><init>(Lm7/p0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 14
    :pswitch_6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

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

.method public final z()I
    .locals 1

    iget v0, p0, Lgc/o;->histo0_:I

    return v0
.end method
