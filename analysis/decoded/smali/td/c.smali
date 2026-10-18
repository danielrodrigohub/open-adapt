.class public abstract Ltd/c;
.super Ljava/lang/Object;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltd/c$a;
    }
.end annotation


# static fields
.field public static final h:Ltd/c$a;

.field public static final i:Ltd/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltd/c$a;

    invoke-direct {v0}, Ltd/c$a;-><init>()V

    sput-object v0, Ltd/c;->h:Ltd/c$a;

    sget-object v0, Lmd/b;->a:Lmd/a;

    invoke-virtual {v0}, Lmd/a;->b()Ltd/c;

    move-result-object v0

    sput-object v0, Ltd/c;->i:Ltd/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(I)I
.end method
