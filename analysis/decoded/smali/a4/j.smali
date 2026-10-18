.class public final La4/j;
.super Ljava/lang/Object;
.source "SefReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/j$a;
    }
.end annotation


# static fields
.field public static final d:Lt6/m;

.field public static final e:Lt6/m;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La4/j$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lt6/b$b;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Lt6/b$b;-><init>(C)V

    .line 2
    new-instance v1, Lt6/m;

    new-instance v2, Lt6/l;

    invoke-direct {v2, v0}, Lt6/l;-><init>(Lt6/b;)V

    invoke-direct {v1, v2}, Lt6/m;-><init>(Lt6/m$b;)V

    .line 3
    sput-object v1, La4/j;->d:Lt6/m;

    const/16 v0, 0x2a

    .line 4
    new-instance v1, Lt6/b$b;

    invoke-direct {v1, v0}, Lt6/b$b;-><init>(C)V

    .line 5
    new-instance v0, Lt6/m;

    new-instance v2, Lt6/l;

    invoke-direct {v2, v1}, Lt6/l;-><init>(Lt6/b;)V

    invoke-direct {v0, v2}, Lt6/m;-><init>(Lt6/m$b;)V

    .line 6
    sput-object v0, La4/j;->e:Lt6/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La4/j;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, La4/j;->b:I

    return-void
.end method
