.class public final Lt6/b$d;
.super Lt6/b$c;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final i:Lt6/b$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt6/b$d;

    invoke-direct {v0}, Lt6/b$d;-><init>()V

    sput-object v0, Lt6/b$d;->i:Lt6/b$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt6/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 2
    invoke-static {p2, p1}, Lt6/h;->e(II)I

    const/4 p1, -0x1

    return p1
.end method

.method public final b(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
